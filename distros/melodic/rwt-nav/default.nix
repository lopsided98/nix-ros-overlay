
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-publisher, map-server, move-base-msgs, rosbridge-server, roscpp, rostest, roswww, rviz, rwt-utils-3rdparty, tf, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-rwt-nav";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_nav/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "18280ab43636ba5f105b85a2b3454f31bcf340680c712636724b701f150ee486";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher map-server move-base-msgs rostest rviz ];
  propagatedBuildInputs = [ geometry-msgs rosbridge-server roscpp roswww rwt-utils-3rdparty tf web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
