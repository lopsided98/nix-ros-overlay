
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-popf";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/popf-release/archive/release/jazzy/popf/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "acaa5e22a2ca01cbafda367b28c1c106f3deeb5e7a615985aae6856194d4dd58";
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
