
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rwt-app-chooser, rwt-image-view, rwt-plot, rwt-speech-recognition, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-noetic-visualization-rwt";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/visualization_rwt/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "9f7696b756cb58f68b4bef7f5c615a2e152b0f94b351c4bd82997faec77afa02";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rwt-app-chooser rwt-image-view rwt-plot rwt-speech-recognition rwt-utils-3rdparty ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>visualization packages using rwt</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
