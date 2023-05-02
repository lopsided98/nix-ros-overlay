
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-dji-osdk";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_dji_osdk/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f77d8e215382716517a4936fb5a75a88b5a102898909ede1e86b1cb6a0d61e8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs geometry-msgs nav-msgs rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to communicate DJI OSDK with Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
