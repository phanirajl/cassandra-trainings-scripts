USE songbrowser;

/** 2.1 Albums table */
CREATE TABLE IF NOT EXISTS albums (
  album_title    VARCHAR,
  artist         VARCHAR,
  genre          VARCHAR,
  producer       VARCHAR,
  record_label   VARCHAR,
  release_year   INT,
  PRIMARY KEY ((artist), release_year, album_title)
);

/** 2.2 Songs by album table */
CREATE TABLE IF NOT EXISTS songs_by_albums (
  album_title    VARCHAR,
  artist         VARCHAR,
  genre          VARCHAR,
  performers     LIST<VARCHAR>,
  release_year   INT,
  song_title     VARCHAR,
  track_no       INT,
  PRIMARY KEY ((release_year, album_title), track_no)
);

/** 2.3 Songs by artist table */
CREATE TABLE IF NOT EXISTS songs_by_artists (
  album_title    VARCHAR,
  artist         VARCHAR,
  genre          VARCHAR,
  performers     LIST<VARCHAR>,
  release_year   INT,
  song_title     VARCHAR,
  track_no       INT,
  PRIMARY KEY ((artist), release_year, album_title, track_no)
);

