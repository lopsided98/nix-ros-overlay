
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rosbridge-server, rospy, rostest, roswww, rwt-utils-3rdparty, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-plot";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_plot/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "442f7110a879b5d107aa19b676910acf811ebe1d030568cc86e476244222b249";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs rosbridge-server rospy roswww rwt-utils-3rdparty std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rwt_plot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
