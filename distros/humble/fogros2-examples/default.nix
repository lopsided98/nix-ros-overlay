
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, fogros2, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-fogros2-examples";
  version = "0.1.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fogros2-release/archive/release/humble/fogros2_examples/0.1.6-3.tar.gz";
    name = "0.1.6-3.tar.gz";
    sha256 = "b85aecd15e3e9df1eb973162f632b32313bdac7ea88daed79daf9e438111055a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ fogros2 ];

  meta = {
    description = ''Examples using FogROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
