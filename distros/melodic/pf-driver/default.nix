
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curlpp, dynamic-reconfigure, jsoncpp, laser-geometry, message-generation, message-runtime, pcl, pcl-conversions, pcl-ros, pf-description, roscpp, roscpp-serialization, roslint, rosunit, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-pf-driver";
  version = "1.2.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PepperlFuchs";
        repo = "pf_lidar_ros_driver-release";
        rev = "release/melodic/pf_driver/1.2.0-2";
        sha256 = "sha256-YIEJh7jpfsYOQ8jkmhSeJRFuBwjg6bYUTEVhcrs/YXM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ curlpp dynamic-reconfigure jsoncpp laser-geometry message-runtime pcl pcl-conversions pcl-ros pf-description roscpp roscpp-serialization rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Pepperl+Fuchs LiDAR package'';
    license = with lib.licenses; [ asl20 ];
  };
}
