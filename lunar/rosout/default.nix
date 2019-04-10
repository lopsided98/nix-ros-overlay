
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rosout";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosout/1.13.7-0.tar.gz;
    sha256 = "abccc457aee4145644fe4d334663171338b91a0067bb75fdf9530a271dd5e806";
  };

  buildInputs = [ rosgraph-msgs roscpp ];
  propagatedBuildInputs = [ rosgraph-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    #license = lib.licenses.BSD;
  };
}
