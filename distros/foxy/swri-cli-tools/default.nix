
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, marti-introspection-msgs }:
buildRosPackage {
  pname = "ros-foxy-swri-cli-tools";
  version = "3.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/swri_cli_tools/3.5.2-3.tar.gz";
    name = "3.5.2-3.tar.gz";
    sha256 = "a2d0e927d70450339d31503450b52a2c726e75ca77d7c7457549a948173833a6";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ marti-introspection-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Command line tools for introspecting ROS systems'';
    license = with lib.licenses; [ bsd3 ];
  };
}
