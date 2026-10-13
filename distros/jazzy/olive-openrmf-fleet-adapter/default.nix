
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-jazzy-olive-openrmf-fleet-adapter";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/olive-robotics/olive-openrmf-fleet-adapter-release/archive/release/jazzy/olive_openrmf_fleet_adapter/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e6c5c57442112b6f70275e4c261c3e4f61edc1a3104fd3cd07c7034c9966ec1f";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros python3Packages.numpy python3Packages.pyyaml python3Packages.requests rclpy rmf-fleet-adapter-python rmf-fleet-msgs rmf-task-msgs ];
  nativeBuildInputs = [ python3Packages.setuptools ];

  meta = {
    description = "Olive OpenRMF fleet adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
