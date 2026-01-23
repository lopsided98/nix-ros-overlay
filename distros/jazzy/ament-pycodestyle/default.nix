
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-pycodestyle";
  version = "0.17.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_pycodestyle/0.17.4-1.tar.gz";
    name = "0.17.4-1.tar.gz";
    sha256 = "2dc6eea1e366d461fe351c97b64b648360c0c66a43d7fe09a6f983ef44395458";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pycodestyle ];

  meta = {
    description = "The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
