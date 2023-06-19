
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rwt-app-chooser, rwt-image-view, rwt-moveit, rwt-plot, rwt-speech-recognition, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-melodic-visualization-rwt";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/visualization_rwt/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "500bfc9c49b82ce213b7776f4c021c5956f8a7c27271951d8808b8848d36eb2d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rwt-app-chooser rwt-image-view rwt-moveit rwt-plot rwt-speech-recognition rwt-utils-3rdparty ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>visualization packages using rwt</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
