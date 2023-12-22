
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-msgs, eigen, geometry-msgs, ncurses, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-alphanumeric-viewer";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_alphanumeric_viewer/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "838a642b6cf5388464fbf35708849e4226bd0c46ce85ca4590b120dd24e088b3";
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
