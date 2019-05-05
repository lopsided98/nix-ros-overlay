
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-lunar-franka-description";
  version = "0.6.0-r2";

  src = fetchurl {
    url = https://github.com/frankaemika/franka_ros-release/archive/release/lunar/franka_description/0.6.0-2.tar.gz;
    sha256 = "045b6caeb42789ab0957d36229b03faf94f4cc6fdd05d10865d4283abbedc479";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
