
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-tasks";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_tasks/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "ea8bcbd9041a9e85fccca51b328b8df1d4f67e3f3f1a1c9fc6ba6a28bba5dbf5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = ''A package containing scripts for demos'';
    license = with lib.licenses; [ "Apache-Licence-2.0" ];
  };
}
