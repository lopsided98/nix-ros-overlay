
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-xml";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_xml/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "afd53adff453b4525ff6acff379de4fe75ded491af386b92e3c264795fea3661";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "XML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
