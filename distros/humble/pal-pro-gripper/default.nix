
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "f8a6e99ad7bccee74d94af31f845bb640ff55711ef2f94f569ed61d63433269d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-pro-gripper-controller-configuration pal-pro-gripper-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_pro_gripper package";
    license = with lib.licenses; [ asl20 ];
  };
}
