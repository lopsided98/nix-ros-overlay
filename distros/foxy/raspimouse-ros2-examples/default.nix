
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, hls-lfcd-lds-driver, joy-linux, nav2-map-server, opencv, raspimouse, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, rt-usb-9axisimu-driver, sensor-msgs, slam-toolbox, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-ros2-examples";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "raspimouse_ros2_examples-release";
        rev = "release/foxy/raspimouse_ros2_examples/1.0.0-1";
        sha256 = "sha256-LHmWYLoZppZx4aDcUBkz+YqgJk4RfHRTaIRRm1TNgSI=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs hls-lfcd-lds-driver joy-linux nav2-map-server opencv raspimouse raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle rt-usb-9axisimu-driver sensor-msgs slam-toolbox std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Raspberry Pi Mouse examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
