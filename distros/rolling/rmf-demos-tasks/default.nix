
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-tasks";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_tasks/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "13fbabee6ee22fd6c659ff9316fbcf0c3f01ae15a05fae20556342b70e5e0e90";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = "A package containing scripts for demos";
    license = with lib.licenses; [ "Apache-Licence-2.0" ];
  };
}
