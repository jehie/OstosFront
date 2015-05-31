CREATE TABLE Tavara(
  id SERIAL PRIMARY KEY,
  valmistaja_id INTEGER REFERENCES TavaranValmistaja(id), 
  nimi varchar(50) NOT NULL,
  hinta int NOT NULL,
  saatavilla boolean DEFAULT TRUE,
  varastossa int NOT NULL,
  kuvaus varchar(400),
  julkaistu DATE,
  added DATE
);

CREATE TABLE TavaranValmistaja(
  id SERIAL PRIMARY KEY,
  nimi varchar(50) NOT NULL,
  maa varchar(400),
  added DATE
);

CREATE TABLE Ateria(
  id SERIAL PRIMARY KEY,
  Aterianvalmistaja_id INTEGER REFERENCES AterianValmistaja(id), 
  nimi varchar(50) NOT NULL,
  hinta int NOT NULL,<mxGraphModel><root><mxCell id="0"/><mxCell id="1" parent="0"/><mxCell id="2" value="AterianValmistaja" style="swimlane;html=1;fontStyle=0;childLayout=stackLayout;horizontal=1;startSize=26;fillColor=none;horizontalStack=0;resizeParent=1;resizeLast=0;container=0;collapsible=1;marginBottom=0;swimlaneFillColor=#ffffff;" vertex="1" parent="1"><mxGeometry x="340" y="160" width="140" height="130" as="geometry"/></mxCell><mxCell id="3" value="&lt;span style=&quot;line-height: 15.1199998855591px&quot;&gt;&amp;lt;&amp;lt;key&amp;gt; av_id&lt;/span&gt;" style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;whiteSpace=wrap;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];" vertex="1" parent="2"><mxGeometry y="26" width="140" height="26" as="geometry"/></mxCell><mxCell id="4" value="-Nimi:String&lt;div&gt;&lt;span style=&quot;line-height: 1.26&quot;&gt;-Maa:String&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;line-height: 1.26&quot;&gt;-Lisatty:Date&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;" style="text;html=1;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;whiteSpace=wrap;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];" vertex="1" parent="2"><mxGeometry y="52" width="140" height="78" as="geometry"/></mxCell></root></mxGraphModel>
  saatavilla boolean DEFAULT TRUE,
  kuvaus varchar(400),
  julkaistu DATE,
  added DATE
);

CREATE TABLE AterianValmistaja(
  id SERIAL PRIMARY KEY,
  nimi varchar(50) NOT NULL,
  maa varchar(400),
  added DATE
);

CREATE TABLE Kayttaja(
  id SERIAL PRIMARY KEY,
  username varchar(20) NOT NULL,
  password varchar(20) NOT NULL,
  admin boolean DEFAULT false,
  maa varchar(20),
  added DATE
);

CREATE TABLE Tilaukset(
  id SERIAL PRIMARY KEY,
  tilaaja_id INTEGER REFERENCES Kayttaja(id), 
  toimitettu boolean DEFAULT false,
  hinta int,
  lentoID varchar(20),
  added DATE
);


