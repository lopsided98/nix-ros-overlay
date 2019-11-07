{ stdenv,
  fetchFromGitHub,
  cmake
}:

stdenv.mkDerivation rec {
  pname = "console_bridge";
  version = "0.4.3";

  src = fetchFromGitHub {
    owner = "ros";
    repo = "${pname}"; 
    rev = "${version}";
    sha256 = "0vk2ji4q93w3fw4s6p0i9d3x2ppsmhxm3x7qrcl4jfr0pyj96n5x"; 
  };

  nativeBuildInputs = [ cmake ];

  meta = with stdenv.lib; {
    description = "A ROS-independent package for logging that seamlessly pipes into rosconsole/rosout for ROS-dependent packages.";
    homepage = https://github.com/ros/console_bridge;
    license = licenses.bsdOriginal;
    maintainers = with maintainers; [ marijanp ];
  };
}