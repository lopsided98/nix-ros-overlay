
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, python3Packages, rclpy, rmf-fleet-adapter-python, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-humble-olive-openrmf-fleet-adapter";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/olive-robotics/olive-openrmf-fleet-adapter-release/archive/release/humble/olive_openrmf_fleet_adapter/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "941507dd847aaa9ba818f7f56ed967b484690706315f72c509ba41b0951daf69";
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
