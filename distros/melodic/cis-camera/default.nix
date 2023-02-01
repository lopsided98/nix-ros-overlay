
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, jsk-rviz-plugins, libuvc, nodelet, pcl-ros, pluginlib, rgbd-launch, roscpp, roslaunch, roslint, rostest, rqt-reconfigure, rviz, sensor-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-cis-camera";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "cis_camera-release";
        rev = "release/melodic/cis_camera/0.0.4-1";
        sha256 = "sha256-eqxJ/bCY3Z4nFQcrsrLtvVZIHpjiJTqccmdE21+U6Fk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport jsk-rviz-plugins libuvc nodelet pcl-ros pluginlib rgbd-launch roscpp rqt-reconfigure rviz sensor-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cis_camera package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
