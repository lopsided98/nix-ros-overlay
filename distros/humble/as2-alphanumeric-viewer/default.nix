
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, ncurses, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-alphanumeric-viewer";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_alphanumeric_viewer/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "5ea05e948bf00c6e9ac16b41395e2364cafc966b8396c7c4fdb5ef02533f435a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs eigen geometry-msgs ncurses rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Alphanumeric Viewer'';
    license = with lib.licenses; [ "BDS-3" ];
  };
}
