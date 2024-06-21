
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-lola-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-jazzy-nao-button-sim";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_button_sim-release/archive/release/jazzy/nao_button_sim/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b8914a258b0647bd3d3062044ee619d555eb2644ba750585d7a62b0f9671e443";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-lola-sensor-msgs ];

  meta = {
    description = "Allows simulating button presses through command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
