
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-robot";
  version = "5.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_robot-release/archive/release/humble/pmb2_robot/5.12.1-1.tar.gz";
    name = "5.12.1-1.tar.gz";
    sha256 = "7fe24358e120412799d6983659d78f8ef85dd625b06265fbfdf4be865649f75b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PMB2 robot description and launch files";
    license = with lib.licenses; [ asl20 ];
  };
}
