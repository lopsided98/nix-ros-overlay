
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, rosbag, roscpp, roslib, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "164f92e63ab8188d83e4107e9cb19fdf9db3c96a44282ffb85833bc0c58bfb98";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ can-msgs rosbag roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
