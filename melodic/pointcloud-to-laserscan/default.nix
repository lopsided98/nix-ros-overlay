
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2-sensor-msgs, tf2, nodelet, laser-geometry }:
buildRosPackage {
  pname = "ros-melodic-pointcloud-to-laserscan";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/melodic/pointcloud_to_laserscan/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "50bebd62ff6e696bde5dd47a8787709a756d894d6826615b8cbbc54abe7edce4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters tf2-ros tf2-sensor-msgs tf2 laser-geometry nodelet roscpp ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs message-filters tf2-ros tf2-sensor-msgs tf2 laser-geometry nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts a 3D Point Cloud into a 2D laser scan. This is useful for making devices like the Kinect appear like a laser scanner for 2D-based algorithms (e.g. laser-based SLAM).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
