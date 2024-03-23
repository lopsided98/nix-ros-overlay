
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppcheck }:
buildRosPackage {
  pname = "ros-humble-ament-cppcheck";
  version = "0.12.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cppcheck/0.12.10-1.tar.gz";
    name = "0.12.10-1.tar.gz";
    sha256 = "c00375e059a78f0249be7dd92ced423745a4a366ce9d84ddfc00cb04e7093fc5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ cppcheck ];

  meta = {
    description = "The ability to perform static code analysis on C/C++ code using Cppcheck
    and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 ];
  };
}
