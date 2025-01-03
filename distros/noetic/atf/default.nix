
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, atf-core, atf-metrics, atf-msgs, atf-plotter, atf-recorder-plugins, atf-test, atf-test-tools, catkin }:
buildRosPackage {
  pname = "ros-noetic-atf";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a367cde198c030667bc0f73f43520154420a7aa64dab2162e49d3ff2685ac15c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ atf-core atf-metrics atf-msgs atf-plotter atf-recorder-plugins atf-test atf-test-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "An automated testing framework (ATF) written for ROS which supports executing integration and system tests, running benchmarks and monitor the code behaviour over time. The ATF provides basic building blocks for easy integration of the tests into your application. Furthermore the ATF provides everything to automate the execution and analysis of tests as well as a graphical web-based frontend to visualize the results.";
    license = with lib.licenses; [ asl20 ];
  };
}
