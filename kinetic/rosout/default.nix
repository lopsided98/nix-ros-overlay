
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosout";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosout/1.12.14-0.tar.gz;
    sha256 = "35fe121c2f721cbbf7f457bd727f7ed9db57dee3b49eb5db58908fa7d925d575";
  };

  buildInputs = [ rosgraph-msgs roscpp ];
  propagatedBuildInputs = [ rosgraph-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''System-wide logging mechanism for messages sent to the /rosout topic.'';
    #license = lib.licenses.BSD;
  };
}
