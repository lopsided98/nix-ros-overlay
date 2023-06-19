
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, marti-introspection-msgs }:
buildRosPackage {
  pname = "ros-humble-swri-cli-tools";
  version = "3.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_cli_tools/3.5.2-1.tar.gz";
    name = "3.5.2-1.tar.gz";
    sha256 = "b4c3c7c9d450e56b04344f84a160d89c64ce35d417543db48e265c4f596fa5af";
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
