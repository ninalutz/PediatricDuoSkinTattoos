/*
 link = a String
       GetRequest get = new GetRequest(link);
       get.send();
       output = get.getContent();
       
       //can save output and stuff
*/


//imports the needed Java classes that Processing doesn't have natively, as we want to avoid using the net library and just do a basic HTTP request 
import java.util.Iterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import http.requests.*;

public class GetRequest
{
  String url;
  String content;
  HttpResponse response;
      ArrayList<BasicNameValuePair> headerPairs;

  
  public GetRequest(String url) 
  {
    this.url = url;
            headerPairs = new ArrayList<BasicNameValuePair>();

  }

  public void send() 
  {
    try {
      DefaultHttpClient httpClient = new DefaultHttpClient();

      HttpGet httpGet = new HttpGet(url);

                      Iterator<BasicNameValuePair> headerIterator = headerPairs.iterator();
                      while (headerIterator.hasNext()) {
                          BasicNameValuePair headerPair = headerIterator.next();
                          httpGet.addHeader(headerPair.getName(),headerPair.getValue());
                      }
  

      response = httpClient.execute( httpGet );
      HttpEntity entity = response.getEntity();
      this.content = EntityUtils.toString(response.getEntity());
      
      if( entity != null ) EntityUtils.consume(entity);
      httpClient.getConnectionManager().shutdown();
      
    } catch( Exception e ) { 
      e.printStackTrace(); 
    }
  }
  
  /* Getters
  _____________________________________________________________ */
  
  public String getContent()
  {
    return this.content;
  }

}
