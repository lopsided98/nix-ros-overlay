
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rwt-app-chooser, rwt-image-view, rwt-plot, rwt-speech-recognition, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-noetic-visualization-rwt";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/visualization_rwt/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "2abc798733a638e6c1df813f326f956d5b096d641e6634c38639c171e46e0306";
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
