
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, can-msgs, roscpp, rostest, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.12-0.tar.gz;
    sha256 = "164f92e63ab8188d83e4107e9cb19fdf9db3c96a44282ffb85833bc0c58bfb98";
  };

  buildInputs = [ std-msgs can-msgs rosbag roslib roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-msgs can-msgs rosbag roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    #license = lib.licenses.BSD;
  };
}
