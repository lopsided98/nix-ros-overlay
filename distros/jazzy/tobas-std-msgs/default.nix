
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "5ac3c5955b41f4f4fb196af93a887ba9052b91ea48018e5a1b287e1689ff7f8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Very primitive message types without units or domains.
		Use only as elements of other messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
