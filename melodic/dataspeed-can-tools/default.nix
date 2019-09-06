
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, can-msgs, roscpp, rostest, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-tools";
  version = "1.0.12";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can_tools/1.0.12-0.tar.gz";
    name = "1.0.12-0.tar.gz";
    sha256 = "164f92e63ab8188d83e4107e9cb19fdf9db3c96a44282ffb85833bc0c58bfb98";
  };

  buildType = "catkin";
  buildInputs = [ rosbag can-msgs roscpp std-msgs roslib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosbag can-msgs roscpp std-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus introspection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
