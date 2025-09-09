
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-popf";
  version = "0.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/kilted/popf/0.0.18-1.tar.gz";
    name = "0.0.18-1.tar.gz";
    sha256 = "d433165e485fa3f99a6595478261687edf2027f8b5dd98cd484e2c3c11bf60d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bison cbc clp flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The POPF package";
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
