
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rosbridge-server, rospy, rostest, roswww, rwt-utils-3rdparty, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-plot";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_plot/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "061e2c006cb98edf6c568230018d2c23d7c17e1653a35a98d4b52acea714dc79";
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
