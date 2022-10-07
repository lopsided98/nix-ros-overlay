
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-tasks";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_tasks/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f6cbbfe5f203f75e881cfddcbfd68440901acc3f13a9ed2bd1232cb6469272bb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = ''A package containing scripts for demos'';
    license = with lib.licenses; [ "Apache-Licence-2.0" ];
  };
}
