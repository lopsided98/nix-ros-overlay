
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-multiple-topic-monitor";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multiple_topic_monitor-release/archive/release/humble/multiple_topic_monitor/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "05009b876c5a99f82c996ec0b07de6ce5b60397f176c5402453957b0bc045c57";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "ROS 2 package for monitoring the frequency and delay of multiple topics.";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
