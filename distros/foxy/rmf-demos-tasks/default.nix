
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-tasks";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_tasks/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "62bebb9f14f2f19a6c12a828590390ffdc9f38d8f908d173e7cb1f18e7ef3e73";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = ''A package containing scripts for demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
