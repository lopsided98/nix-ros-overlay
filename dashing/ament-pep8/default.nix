
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-pep8";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_pep8/0.7.9-1.tar.gz;
    sha256 = "0214c744c8429d2915427b084518051493d6c07af89a34d9709f912ad557142f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.pep8 ];

  meta = {
    description = ''The ability to check code against the style conventions in PEP 8 and
    generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
