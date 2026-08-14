
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-compass-msgs";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/compass_msgs/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "a5148783a3e6b6625a7befb790b221353e7f8b2319ff97d657ab7f8e14776d8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 port of compass_msgs: messages related to compass and azimuth.
    Message definition identical to ctu-vras/compass for compatibility.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
