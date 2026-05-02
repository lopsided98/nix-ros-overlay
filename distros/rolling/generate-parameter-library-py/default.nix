
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-generate-parameter-library-py";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/rolling/generate_parameter_library_py/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "4f762339b249e5f471ed42c51f707fea3a4972476bfd44b21a8c9e7238a7f4a8";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3 python3Packages.jinja2 python3Packages.pyyaml python3Packages.typeguard ];

  meta = {
    description = "Python to generate ROS parameter library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
