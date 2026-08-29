
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-demos-tasks";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/lyrical/rmf_demos_tasks/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "fb6401e62c629c347e25dfc6b0046fb83ed539f6e2b7345fe65728359161d0e7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = "A package containing scripts for demos";
    license = with lib.licenses; [ asl20 ];
  };
}
