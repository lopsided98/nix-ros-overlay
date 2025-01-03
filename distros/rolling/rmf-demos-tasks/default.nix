
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-lift-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-demos-tasks";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/rolling/rmf_demos_tasks/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "1cf2271fe15fb762cccd031a4895dfc29f0d51a204c26d369c898515de2c6c9e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ rmf-dispenser-msgs rmf-fleet-msgs rmf-lift-msgs rmf-task-msgs ];

  meta = {
    description = "A package containing scripts for demos";
    license = with lib.licenses; [ "Apache-Licence-2.0" ];
  };
}
