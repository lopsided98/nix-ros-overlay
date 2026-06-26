
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-gazebo }:
buildRosPackage {
  pname = "ros-humble-omni-base-simulation";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_simulation-release/archive/release/humble/omni_base_simulation/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "b28486c6a18f10da3ffeb838fad658901afe3fd33aa0d4b49a8f4f77ab7a09d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
