
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-bcr-arm";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/jazzy/bcr_arm/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "d638bfc7b4955eab1544f3b43cef5cf50ea084edd179ba7c62af8422724f9dc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bcr-arm-description bcr-arm-gazebo bcr-arm-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for the BCR Arm robot stack";
    license = with lib.licenses; [ asl20 ];
  };
}
