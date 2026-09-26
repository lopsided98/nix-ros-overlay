
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mavros-msgs, rclcpp, rclcpp-components, std-msgs, tobas-math, tobas-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-cpp-code-style-example";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_cpp_code_style_example/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "6b11e2159f417c2e60a6fb201fc02f5f0c432402f40e1823522ed87a84aa884f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mavros-msgs rclcpp rclcpp-components std-msgs tobas-math tobas-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package covering the contents described in `CPP_CODE_STYLE.md`.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
