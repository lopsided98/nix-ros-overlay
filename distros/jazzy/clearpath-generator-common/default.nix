
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-apt, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-control, clearpath-description, clearpath-diagnostics, clearpath-manipulators, moveit-setup-srdf-plugins }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-generator-common";
  version = "2.9.10-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_generator_common/2.9.10-2.tar.gz";
    name = "2.9.10-2.tar.gz";
    sha256 = "3ec4d50721d3b451eef5d16ea923853a0ae3186b88cd06fe9ddc1359d0a3dcc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-setup-srdf-plugins ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_python3-apt clearpath-config clearpath-control clearpath-description clearpath-diagnostics clearpath-manipulators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Common Generator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
