
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-controllers";
  version = "2.2.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "dynamixel-workbench-release";
        rev = "release/melodic/dynamixel_workbench_controllers/2.2.0-0";
        sha256 = "sha256-OEukuw01/OJ4FhFbr1rgRFIbDwHwbEsoyKv1slSJbO4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen geometry-msgs libyamlcpp roscpp sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains examples of applying the 'dynamixel_workbench_toolbox' library developed on the basis of dynamixel_sdk to various operating modes of Dynamixel.'';
    license = with lib.licenses; [ asl20 ];
  };
}
