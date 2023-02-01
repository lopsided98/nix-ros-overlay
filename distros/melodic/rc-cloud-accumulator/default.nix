
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, pcl, pcl-ros, roscpp, std-srvs, tf2, tf2-msgs, tf2-ros, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-melodic-rc-cloud-accumulator";
  version = "1.0.4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "roboception-gbp";
        repo = "rc_cloud_accumulator-release";
        rev = "release/melodic/rc_cloud_accumulator/1.0.4-0";
        sha256 = "sha256-N/riIF4CM0RjExxTEMJOgB1Ds0YYHTsat1kdQQnz0hI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs pcl pcl-ros roscpp std-srvs tf2 tf2-msgs tf2-ros vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A viewer for the SLAM component of roboception based on ROS and PCL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
