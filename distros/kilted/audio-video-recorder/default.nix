
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, audio-common-msgs, boost, gst_all_1, jsk-ros1-ros2-compat, message-filters, rclcpp, ros-environment, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-audio-video-recorder";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kilted/audio_video_recorder/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "dbf945ed0d2b1d1c7daccb34a0374bd3d182d0e80f839d3aae6bc0eca54938b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ audio-common-msgs boost gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly gst_all_1.gstreamer jsk-ros1-ros2-compat message-filters rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "ROS package for recording image and audio synchronously";
    license = with lib.licenses; [ bsd3 ];
  };
}
