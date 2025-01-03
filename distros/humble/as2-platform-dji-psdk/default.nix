
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, psdk-interfaces, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-dji-psdk";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/as2_platform_dji_psdk-release/archive/release/humble/as2_platform_dji_psdk/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7604efdd5620f722867fdc2661df52ada3c2d5d5414cdd60f2848415ba69997f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-cpp as2-core as2-msgs psdk-interfaces rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 DJI PSDK aerial platform";
    license = with lib.licenses; [ "BDS-3" ];
  };
}
