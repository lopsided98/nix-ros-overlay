
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-compass-msgs";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/compass_msgs/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "8cc41b3bd4d094c0c7148208b7b07ba114c1c5129a9c40cae75beb31ff4ca02d";
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
