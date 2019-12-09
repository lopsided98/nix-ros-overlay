
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, rosbag, catkin, roslib, roscpp, can-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "164f92e63ab8188d83e4107e9cb19fdf9db3c96a44282ffb85833bc0c58bfb98";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rosbag roslib roscpp can-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-msgs rosbag roslib roscpp can-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
