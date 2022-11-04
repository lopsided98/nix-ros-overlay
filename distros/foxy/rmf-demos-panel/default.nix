
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-demos-dashboard-resources, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-panel";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_panel/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "2c39f52031668251c0825b27164b83d0014879019788c5fc5114c88e6eca4e98";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask python3Packages.flask-cors rmf-demos-dashboard-resources rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = ''Web based RMF Demo Panel'';
    license = with lib.licenses; [ asl20 ];
  };
}
