
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-tasks";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_tasks/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4a5db4c9fdb67c78f1282d292a0c97483f30f43572b0601d7f2c29ef4c076a96";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = ''A package containing scripts for demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
