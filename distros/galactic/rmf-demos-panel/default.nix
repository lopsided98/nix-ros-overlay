
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-demos-dashboard-resources, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-panel";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_panel/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "d63117aa1f00e5f240bf85e8c555600d07371f205d150c95fe8d62087aa8a411";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask python3Packages.flask-cors rmf-demos-dashboard-resources rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = ''Web based RMF Demo Panel'';
    license = with lib.licenses; [ asl20 ];
  };
}
