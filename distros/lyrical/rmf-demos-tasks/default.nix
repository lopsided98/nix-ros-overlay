
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos-tasks";
  version = "2.8.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos_tasks/2.8.2-4.tar.gz";
    name = "2.8.2-4.tar.gz";
    sha256 = "5f13ec3c1fb8d41beeca98f54ff9697573a25477c58a8b344174eb0b9377e8a5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = "A package containing scripts for demos";
    license = with lib.licenses; [ "Apache-Licence-2.0" ];
  };
}
